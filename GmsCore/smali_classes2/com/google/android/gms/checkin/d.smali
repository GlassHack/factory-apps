.class final Lcom/google/android/gms/checkin/d;
.super Lcom/google/android/gms/checkin/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/checkin/CheckinService;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/CheckinService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/google/android/gms/checkin/d;->a:Lcom/google/android/gms/checkin/CheckinService;

    invoke-direct {p0}, Lcom/google/android/gms/checkin/a/b;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/google/android/gms/checkin/d;->b:Landroid/content/Context;

    .line 641
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/gms/checkin/d;->b:Landroid/content/Context;

    const-string v1, "Checkin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 646
    const-string v1, "CheckinService_deviceDataVersionInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    const-string v1, "CheckinServiceImpl"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    if-nez v0, :cond_1

    .line 649
    const-string v1, "CheckinServiceImpl"

    const-string v2, "getDeviceDataVersionInfo(): no version info found."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    :goto_0
    return-object v0

    .line 651
    :cond_1
    const-string v1, "CheckinServiceImpl"

    const-string v2, "getDeviceDataVersionInfo(): returning the stored version info."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
