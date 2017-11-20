.class final Lcom/google/c/c/bc;
.super Lcom/google/c/c/bb;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/c/c/bc;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/c/c/bb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/c/c/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/c/c/bv;->a:Lcom/google/c/c/ek;

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/google/c/c/bv;->a:Lcom/google/c/c/ek;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/c/c/bc;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 199
    array-length v0, p1

    if-lez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 202
    :cond_0
    return-object p1
.end method
