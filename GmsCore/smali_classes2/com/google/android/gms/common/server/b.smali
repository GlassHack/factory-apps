.class public final Lcom/google/android/gms/common/server/b;
.super Lcom/android/d/f;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/d/f;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/google/android/gms/common/server/b;->a:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/google/android/gms/common/server/b;->b:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIF)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p3, p4, p5}, Lcom/android/d/f;-><init>(IIF)V

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/common/server/b;->a:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/google/android/gms/common/server/b;->b:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/d/aa;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p1, Lcom/android/d/aa;->a:Lcom/android/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v0, v0, Lcom/android/d/m;->a:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v0, v0, Lcom/android/d/m;->a:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 216
    invoke-static {p1}, Lcom/google/android/gms/common/server/b/c;->a(Lcom/android/d/aa;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "userRateLimitExceeded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/common/server/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/server/a;->a(Lcom/android/d/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/common/server/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/server/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    :cond_0
    throw p1

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_2
    invoke-super {p0, p1}, Lcom/android/d/f;->a(Lcom/android/d/aa;)V

    .line 230
    return-void
.end method
