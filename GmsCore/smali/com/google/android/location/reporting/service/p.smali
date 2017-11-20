.class final Lcom/google/android/location/reporting/service/p;
.super Lcom/google/android/location/reporting/service/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/service/PreferenceService;


# direct methods
.method private constructor <init>(Lcom/google/android/location/reporting/service/PreferenceService;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/location/reporting/service/p;->a:Lcom/google/android/location/reporting/service/PreferenceService;

    invoke-direct {p0}, Lcom/google/android/location/reporting/service/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/reporting/service/PreferenceService;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/service/p;-><init>(Lcom/google/android/location/reporting/service/PreferenceService;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/location/reporting/service/p;->a:Lcom/google/android/location/reporting/service/PreferenceService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/PreferenceService;->a(Lcom/google/android/location/reporting/service/PreferenceService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/location/reporting/service/p;->a:Lcom/google/android/location/reporting/service/PreferenceService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/PreferenceService;->a(Lcom/google/android/location/reporting/service/PreferenceService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/accounts/Account;Z)V
    .locals 4

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->b()Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/google/android/location/reporting/service/p;->a:Lcom/google/android/location/reporting/service/PreferenceService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/PreferenceService;->a(Lcom/google/android/location/reporting/service/PreferenceService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    const-string v2, "PrefService.setReportingEnabled"

    const-string v3, "ui_update"

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 113
    return-void
.end method

.method public final b(Landroid/accounts/Account;Z)V
    .locals 4

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->b()Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/android/location/reporting/service/p;->a:Lcom/google/android/location/reporting/service/PreferenceService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/PreferenceService;->a(Lcom/google/android/location/reporting/service/PreferenceService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    const-string v2, "PrefService.setHistoryEnabled"

    const-string v3, "ui_update"

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 121
    return-void
.end method
