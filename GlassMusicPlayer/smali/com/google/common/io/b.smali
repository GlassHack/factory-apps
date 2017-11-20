.class public abstract Lcom/google/common/io/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/io/b;

.field private static final b:Lcom/google/common/io/b;

.field private static final c:Lcom/google/common/io/b;

.field private static final d:Lcom/google/common/io/b;

.field private static final e:Lcom/google/common/io/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 346
    new-instance v0, Lcom/google/common/io/d;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/b;->a:Lcom/google/common/io/b;

    .line 366
    new-instance v0, Lcom/google/common/io/d;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/b;->b:Lcom/google/common/io/b;

    .line 387
    new-instance v0, Lcom/google/common/io/d;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/b;->c:Lcom/google/common/io/b;

    .line 407
    new-instance v0, Lcom/google/common/io/d;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/b;->d:Lcom/google/common/io/b;

    .line 426
    new-instance v0, Lcom/google/common/io/d;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/b;->e:Lcom/google/common/io/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/io/b;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/google/common/io/b;->a:Lcom/google/common/io/b;

    return-object v0
.end method

.method private a([BII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/ai;->a(III)V

    .line 155
    invoke-virtual {p0, p3}, Lcom/google/common/io/b;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/io/aj;->a(I)Lcom/google/common/io/am;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/common/io/b;->a(Lcom/google/common/io/am;)Lcom/google/common/io/al;

    move-result-object v2

    .line 158
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 159
    add-int v3, p2, v0

    :try_start_0
    aget-byte v3, p1, v3

    invoke-interface {v2, v3}, Lcom/google/common/io/al;->a(B)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {v2}, Lcom/google/common/io/al;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method abstract a(I)I
.end method

.method abstract a(Lcom/google/common/io/am;)Lcom/google/common/io/al;
.end method

.method public final a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/io/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
