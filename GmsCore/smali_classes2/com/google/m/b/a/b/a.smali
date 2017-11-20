.class public final Lcom/google/m/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/m/b/a/b/c;

.field private static final b:Lcom/google/m/b/a/b/g;


# instance fields
.field private final c:Ljavax/crypto/Mac;

.field private final d:I

.field private final e:Lcom/google/m/b/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/m/b/a/b/e;

    invoke-direct {v0}, Lcom/google/m/b/a/b/e;-><init>()V

    sput-object v0, Lcom/google/m/b/a/b/a;->b:Lcom/google/m/b/a/b/g;

    .line 291
    new-instance v0, Lcom/google/m/b/a/b/b;

    invoke-direct {v0}, Lcom/google/m/b/a/b/b;-><init>()V

    sput-object v0, Lcom/google/m/b/a/b/a;->a:Lcom/google/m/b/a/b/c;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;Lcom/google/m/b/a/b/f;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/m/b/a/b/a;->c:Ljavax/crypto/Mac;

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/m/b/a/b/a;->d:I

    .line 44
    iput-object p2, p0, Lcom/google/m/b/a/b/a;->e:Lcom/google/m/b/a/b/f;

    .line 45
    return-void
.end method

.method private static a(J)[B
    .locals 2

    .prologue
    .line 178
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J[B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x3

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/google/m/b/a/b/a;->e:Lcom/google/m/b/a/b/f;

    invoke-interface {v2}, Lcom/google/m/b/a/b/f;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/m/b/a/b/a;->a(J)[B

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/google/m/b/a/b/a;->a(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/m/b/a/b/a;->c:Ljavax/crypto/Mac;

    invoke-virtual {v4, v3}, Ljavax/crypto/Mac;->update([B)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/m/b/a/b/a;->c:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    sget-object v1, Lcom/google/m/b/a/b/a;->b:Lcom/google/m/b/a/b/g;

    iget v2, p0, Lcom/google/m/b/a/b/a;->d:I

    invoke-interface {v1, v2, v0}, Lcom/google/m/b/a/b/g;->a(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
