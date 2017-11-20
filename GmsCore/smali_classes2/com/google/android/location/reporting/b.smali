.class public final Lcom/google/android/location/reporting/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/reporting/service/m;

.field public final b:Lcom/google/android/location/reporting/LocationReportingController;

.field public final c:Lcom/google/android/gms/common/util/i;

.field private final d:Lcom/google/android/location/reporting/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/LocationReportingController;Lcom/google/android/gms/common/util/i;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/location/reporting/b;->a:Lcom/google/android/location/reporting/service/m;

    .line 53
    iput-object p2, p0, Lcom/google/android/location/reporting/b;->d:Lcom/google/android/location/reporting/e;

    .line 54
    iput-object p3, p0, Lcom/google/android/location/reporting/b;->b:Lcom/google/android/location/reporting/LocationReportingController;

    .line 55
    iput-object p4, p0, Lcom/google/android/location/reporting/b;->c:Lcom/google/android/gms/common/util/i;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 158
    const-string v0, "GCoreUlr"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received NLP activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-static {p2}, Lcom/google/android/location/reporting/b/j;->b(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 163
    invoke-virtual {p2}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "GCoreUlr"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Storing activity for account "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/reporting/b;->d:Lcom/google/android/location/reporting/e;

    const-string v3, "activity"

    invoke-virtual {v2, v0, p1, v3}, Lcom/google/android/location/reporting/e;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "GCoreUlr"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {v2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not storing activity for non-history account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_4
    return-void
.end method
