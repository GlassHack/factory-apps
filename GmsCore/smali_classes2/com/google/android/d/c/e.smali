.class public final Lcom/google/android/d/c/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 66
    iput-object p2, p0, Lcom/google/android/d/c/e;->a:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/google/android/d/c/e;->b:I

    .line 68
    iput-wide p4, p0, Lcom/google/android/d/c/e;->c:J

    .line 69
    iput-wide p6, p0, Lcom/google/android/d/c/e;->d:J

    .line 70
    iput-wide p8, p0, Lcom/google/android/d/c/e;->e:J

    .line 71
    iput-wide p10, p0, Lcom/google/android/d/c/e;->f:J

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/google/android/d/c/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/d/c/e;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/d/c/e;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/d/c/e;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/d/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/d/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/d/c/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/d/c/e;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/d/c/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/d/c/e;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/d/c/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/d/c/e;->d:J

    return-wide v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/google/android/d/c/f;

    invoke-direct {v1, p0, v0}, Lcom/google/android/d/c/f;-><init>(Lcom/google/android/d/c/e;Ljava/io/InputStream;)V

    return-object v1
.end method
