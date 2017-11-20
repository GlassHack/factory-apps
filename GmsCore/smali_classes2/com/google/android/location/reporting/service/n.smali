.class public final Lcom/google/android/location/reporting/service/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/reporting/config/ConfigGetter;

.field private final c:Lcom/google/android/location/reporting/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/ConfigGetter;Lcom/google/android/location/reporting/e;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/location/reporting/service/n;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/android/location/reporting/service/n;->b:Lcom/google/android/location/reporting/config/ConfigGetter;

    .line 40
    iput-object p3, p0, Lcom/google/android/location/reporting/service/n;->c:Lcom/google/android/location/reporting/e;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;J)I
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 48
    const-string v2, "GCoreUlr"

    invoke-static {v2, v5}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reportPlace("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/reporting/service/n;->b:Lcom/google/android/location/reporting/config/ConfigGetter;

    invoke-interface {v2, p2}, Lcom/google/android/location/reporting/config/ConfigGetter;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/google/android/location/reporting/service/n;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;Lcom/google/android/location/reporting/config/AccountConfig;)I

    .line 56
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v3

    if-nez v3, :cond_4

    .line 57
    :cond_1
    const-string v0, "GCoreUlr"

    invoke-static {v0, v5}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for inactive account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 87
    :cond_3
    :goto_0
    return v0

    .line 64
    :cond_4
    invoke-static {p3, p1, p4, p5}, Lcom/google/android/location/reporting/c;->a(Lcom/google/android/gms/location/places/PlaceReport;Ljava/lang/String;J)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v3

    .line 65
    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(I)V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/reporting/service/n;->c:Lcom/google/android/location/reporting/e;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v2

    invoke-virtual {v1, p2, v3, v2}, Lcom/google/android/location/reporting/e;->a(Landroid/accounts/Account;Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 68
    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error saving ApiPlaceReport to DB for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/location/reporting/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    const-string v2, "GCoreUlr"

    invoke-static {v2, v6}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error saving ApiPlaceReport to DB for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/reporting/service/n;->a:Landroid/content/Context;

    const-string v1, "com.google.android.location.reporting.ACTION_RESET_WIFI_ATTACHMENT"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/location/reporting/service/n;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method
