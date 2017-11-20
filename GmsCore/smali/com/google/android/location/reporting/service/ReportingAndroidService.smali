.class public Lcom/google/android/location/reporting/service/ReportingAndroidService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/reporting/config/h;

.field private b:Lcom/google/android/location/reporting/r;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Lcom/google/android/location/reporting/ApiMetadataStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/config/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->a:Lcom/google/android/location/reporting/config/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/r;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b:Lcom/google/android/location/reporting/r;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/ApiMetadataStore;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->d:Lcom/google/android/location/reporting/ApiMetadataStore;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 69
    const-string v0, "com.google.android.gms.location.reporting.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/android/location/reporting/service/v;

    invoke-direct {v0, p0, p0}, Lcom/google/android/location/reporting/service/v;-><init>(Lcom/google/android/location/reporting/service/ReportingAndroidService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->a:Lcom/google/android/location/reporting/config/h;

    .line 61
    invoke-static {p0}, Lcom/google/android/location/reporting/r;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b:Lcom/google/android/location/reporting/r;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->c:Landroid/content/pm/PackageManager;

    .line 63
    new-instance v0, Lcom/google/android/location/reporting/h;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b:Lcom/google/android/location/reporting/r;

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/h;-><init>(Lcom/google/android/location/reporting/r;)V

    .line 64
    new-instance v1, Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/reporting/ApiMetadataStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    iput-object v1, p0, Lcom/google/android/location/reporting/service/ReportingAndroidService;->d:Lcom/google/android/location/reporting/ApiMetadataStore;

    .line 65
    return-void
.end method
