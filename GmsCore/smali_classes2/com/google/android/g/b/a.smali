.class public final Lcom/google/android/g/b/a;
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
    .line 69
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 70
    iput-object p2, p0, Lcom/google/android/g/b/a;->a:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/google/android/g/b/a;->b:I

    .line 72
    iput-wide p4, p0, Lcom/google/android/g/b/a;->c:J

    .line 73
    iput-wide p6, p0, Lcom/google/android/g/b/a;->d:J

    .line 74
    iput-wide p8, p0, Lcom/google/android/g/b/a;->e:J

    .line 75
    iput-wide p10, p0, Lcom/google/android/g/b/a;->f:J

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/android/g/b/a;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/g/b/a;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/g/b/a;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/g/b/a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/g/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/g/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/g/b/a;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/g/b/a;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/g/b/a;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/g/b/a;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/g/b/a;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/g/b/a;->d:J

    return-wide v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/google/android/g/b/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/g/b/b;-><init>(Lcom/google/android/g/b/a;Ljava/io/InputStream;)V

    return-object v1
.end method
