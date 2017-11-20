.class public final Lcom/google/android/gms/clearcut/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/clearcut/d;

.field public final e:Lcom/google/n/a/b/a/a/i;

.field public f:Z

.field public final synthetic g:Lcom/google/android/gms/clearcut/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[B)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[BB)V

    .line 216
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[BB)V
    .locals 4

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->a(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/c;->a:I

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->b:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->c:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/google/n/a/b/a/a/i;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/c;->f:Z

    .line 223
    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->a(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/c;->a:I

    .line 224
    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->b:Ljava/lang/String;

    .line 225
    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->c:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->d(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/util/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/n/a/b/a/a/i;->a:J

    .line 229
    if-eqz p2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    iput-object p2, v0, Lcom/google/n/a/b/a/a/i;->h:[B

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->d:Lcom/google/android/gms/clearcut/d;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/a;[BC)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[B)V

    return-void
.end method
