.class public final Lcom/google/android/location/reporting/service/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/service/g;


# direct methods
.method protected constructor <init>(Lcom/google/android/location/reporting/service/g;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/location/reporting/service/h;->a:Lcom/google/android/location/reporting/service/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/h;->a:Lcom/google/android/location/reporting/service/g;

    iget-object v0, v0, Lcom/google/android/location/reporting/service/g;->a:Lcom/google/android/gms/gcm/ag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "326638037848"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ag;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "GCoreUlr"

    const-string v2, "Registered with GCM"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/service/h;->a:Lcom/google/android/location/reporting/service/g;

    iget-object v1, v1, Lcom/google/android/location/reporting/service/g;->b:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;)V

    .line 88
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_1
    const-string v0, "GCoreUlr"

    const-string v1, "GCM server returned empty registration ID"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "GCoreUlr"

    const-string v2, "Error during GCM registration"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/location/reporting/service/h;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
