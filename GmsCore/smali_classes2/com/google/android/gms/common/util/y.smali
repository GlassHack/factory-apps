.class public final Lcom/google/android/gms/common/util/y;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/j;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/common/util/ab;

.field private e:Lcom/google/android/gms/common/util/aa;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/j;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/util/ab;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/common/util/y;->a:Landroid/support/v4/app/j;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/common/util/y;->c:Ljava/lang/String;

    .line 74
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/ab;

    iput-object v0, p0, Lcom/google/android/gms/common/util/y;->d:Lcom/google/android/gms/common/util/ab;

    .line 75
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->a:Landroid/support/v4/app/j;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->c:Ljava/lang/String;

    .line 104
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/common/util/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/util/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/util/y;->e:Lcom/google/android/gms/common/util/aa;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->e:Lcom/google/android/gms/common/util/aa;

    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->c()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "WebLoginProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/util/aa;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->e:Lcom/google/android/gms/common/util/aa;

    new-instance v1, Lcom/google/android/gms/common/util/z;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/util/z;-><init>(Lcom/google/android/gms/common/util/y;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/aa;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weblogin:continue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->a:Landroid/support/v4/app/j;

    iget-object v2, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->e:Lcom/google/android/gms/common/util/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/util/aa;->a()V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "WebLoginHelper"

    const-string v2, "unable to retrieve token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    const-string v1, "WebLoginHelper"

    const-string v2, "unable to retrieve token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/util/y;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/common/util/y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->d:Lcom/google/android/gms/common/util/ab;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/ab;->e()V

    .line 111
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/util/y;->d:Lcom/google/android/gms/common/util/ab;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/util/ab;->b(Ljava/lang/String;)V

    return-void
.end method
