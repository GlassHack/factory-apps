.class final Lcom/google/i/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/location/f/aj;


# instance fields
.field public final a:Lcom/google/g/a/b/b/a;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/i/a/b/p;

    invoke-direct {v0}, Lcom/google/i/a/b/p;-><init>()V

    sput-object v0, Lcom/google/i/a/b/o;->c:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    .line 35
    iget-object v0, p0, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-static {v0}, Lcom/google/i/a/b/o;->a(Lcom/google/g/a/b/b/a;)I

    move-result v0

    iput v0, p0, Lcom/google/i/a/b/o;->b:I

    .line 36
    return-void
.end method

.method public static final a(Lcom/google/g/a/b/b/a;)I
    .locals 1

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v1, p1, Lcom/google/i/a/b/o;

    if-eqz v1, :cond_0

    .line 46
    check-cast p1, Lcom/google/i/a/b/o;

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v1

    iget-object v2, p1, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v2}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/i/a/b/o;->b:I

    return v0
.end method
