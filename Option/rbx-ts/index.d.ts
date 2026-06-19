type SomeCallback<T, K> = (value: T) => K;
type NoneCallback<K> = () => K;
type Callback<T> = () => T;
type FilterCallback<T> = (value: T) => boolean;
/** ===== Runtime shape ===== */
export type OptionComponent<T> = Some<T> | None;
/** ===== Tagged union ===== */
export interface Some<T> {
    Tag: "Some";
    Some: T;
}
export interface None {
    Tag: "None";
    None: true;
}
/** ===== Instance API ===== */
export interface IOption<T> {
    Tag: "Some" | "None";
    Value?: T;
    IsSome(): boolean;
    IsNone(): boolean;
    Match<K>(options: {
        Some: SomeCallback<T, K>;
        None: NoneCallback<K>;
    }): K;
    Assert(errorMessage: string): void;
    GetOr<K>(value: K): T | K;
    GetOrElse<K>(callback: Callback<K>): T | K;
    Map<K>(callback: (value: T) => K): IOption<K>;
    Filter(callback: FilterCallback<T>): IOption<T>;
    XOR<K>(other: IOption<K>): IOption<T | K | null>;
    AndThen<K>(callback: (value: T) => IOption<K>): IOption<K | null>;
    Expect(message: string): T;
    ExpectNone(message: string): void;
    UnWrap(): T;
    UnWrapOr<K>(value: K): T | K;
    UnWrapOrElse<K>(callback: Callback<K>): T | K;
    Contains<K>(value: K): boolean;
    Serialize(): OptionComponent<T>;
    /** aliases */
    isSome: () => boolean;
    isNone: () => boolean;
    match: IOption<T>["Match"];
    assert: IOption<T>["Assert"];
    getOr: IOption<T>["GetOr"];
    getOrElse: IOption<T>["GetOrElse"];
    xor: IOption<T>["XOR"];
    andThen: IOption<T>["AndThen"];
    expect: IOption<T>["Expect"];
    expectNone: IOption<T>["ExpectNone"];
    unWrap: IOption<T>["UnWrap"];
    unWrapOr: IOption<T>["UnWrapOr"];
    unWrapOrElse: IOption<T>["UnWrapOrElse"];
    contains: IOption<T>["Contains"];
    serialize: IOption<T>["Serialize"];
}
/** ===== Constructor API ===== */
export interface OptionConstructor {
    new <T>(value: T): IOption<T>;
    new (): IOption<null>;
    IsOption<T>(object: OptionComponent<T>): boolean;
    Deserialize<T, A>(data: OptionComponent<T>): OptionComponent<A>;
}
/** ===== EXPORT (IMPORTANT) ===== */
export declare const Option: OptionConstructor;
export default Option;
