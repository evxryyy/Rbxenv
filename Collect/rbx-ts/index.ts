type Executable = CallbackLike | ConnectionLike | MetatableLike | Instance | thread;

type CallbackLike = () => void;
type ConnectionLike = RBXScriptConnection;

type CleanupMethods = {
    Destroy?: () => void;
    Clean?: () => void;
    DoCleaning?: () => void;
    Cleaning?: () => void;
    Disconnect?: () => void;
    DisconnectAll?: () => void;
};

type MetatableLike = Record<string, unknown> & CleanupMethods;

declare namespace Collect {
    interface CollectConstructor {
        new (): Collect;
    }
}

interface Collect {
    Add(object: Executable): void;
    Remove(object: Executable, clean?: boolean): void;
    RemoveAll(clean?: boolean, ...args: unknown[]): void;
    Find(object: Executable): Executable | null;
    Construct<T extends Executable, A extends unknown[]>(ctor: {
        new (...args: A): T;
    } | {
        new: (...args: A) => T;
    } | ((...args: A) => T), ...args: A): T | undefined;
    Extend(): Collect;
    Merge(objectComponent: Collect): void;
    LinkToInstance(object: Instance): Collect;
    IsEmpty(): boolean;
    Clean(): void;
    WrapClean(): () => void;
    add: Collect["Add"];
    remove: Collect["Remove"];
    removeAll: Collect["RemoveAll"];
    find: Collect["Find"];
    construct: Collect["Construct"];
    extend: Collect["Extend"];
    merge: Collect["Merge"];
    destroy: Collect["Clean"];
    link: Collect["LinkToInstance"];
    isEmpty: Collect["IsEmpty"];
    clean: Collect["Clean"];
    wrapClean: Collect["WrapClean"];
}

declare const Collect: Collect.CollectConstructor;

export = Collect;
