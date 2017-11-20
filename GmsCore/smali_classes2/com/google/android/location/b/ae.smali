.class public final Lcom/google/android/location/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/g/a/b/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/android/location/b/ae;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/ae;->a:Lcom/google/g/a/b/b/a;

    return-void
.end method

.method private static a()Lcom/google/g/a/b/b/a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->U:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 64
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 65
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 67
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 68
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 69
    return-object v0
.end method


# virtual methods
.method public final a(II)Lcom/google/g/a/b/b/a;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/location/b/ae;->a:Lcom/google/g/a/b/b/a;

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 54
    invoke-static {}, Lcom/google/android/location/b/ae;->a()Lcom/google/g/a/b/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/b/ae;->a:Lcom/google/g/a/b/b/a;

    .line 55
    return-object v0
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/b/ae;->a:Lcom/google/g/a/b/b/a;

    iget-object v1, p0, Lcom/google/android/location/b/ae;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, p1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 60
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/location/b/ae;->a(I)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/location/b/ae;->a(I)V

    .line 42
    :cond_0
    return-void
.end method
