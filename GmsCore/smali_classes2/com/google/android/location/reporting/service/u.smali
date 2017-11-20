.class final Lcom/google/android/location/reporting/service/u;
.super Lcom/google/android/gms/location/reporting/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/location/reporting/service/ReportingAndroidService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-direct {p0}, Lcom/google/android/gms/location/reporting/a/b;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Lcom/google/android/location/reporting/service/x;

    iget-object v0, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v2}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v3}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->c(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/r;

    move-result-object v3

    new-instance v4, Lcom/google/android/location/reporting/b/g;

    invoke-direct {v4}, Lcom/google/android/location/reporting/b/g;-><init>()V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/service/x;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/ConfigGetter;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/b/f;)V

    .line 187
    iget-object v2, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/location/reporting/service/y;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", can\'t cancel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    iget-object v0, v1, Lcom/google/android/location/reporting/service/x;->c:Lcom/google/android/location/reporting/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/reporting/r;->b(J)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v1, "GCoreUlr"

    const-string v2, "original cancelUploadRequest() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw v0
.end method

.method public final a(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    .locals 6

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 197
    new-instance v0, Lcom/google/android/location/reporting/service/n;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v2}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v3}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->d(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/ApiMetadataStore;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/reporting/service/n;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/ConfigGetter;Lcom/google/android/location/reporting/e;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/reporting/service/n;->a(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;J)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 7

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    .line 127
    iget-object v1, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;Lcom/google/android/location/reporting/config/AccountConfig;)I

    .line 130
    new-instance v2, Lcom/google/android/location/reporting/config/k;

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/location/reporting/config/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/android/location/reporting/config/k;->a(Landroid/accounts/Account;)I

    move-result v2

    .line 133
    sget-object v0, Lcom/google/android/location/reporting/service/y;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "GCoreUlr"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ReportingAndroidService: Package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/reporting/config/AccountConfig;->a(IZ)Lcom/google/android/gms/location/reporting/ReportingState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "GCoreUlr"

    const-string v2, "original getReportingState() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    .locals 8

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Lcom/google/android/location/reporting/service/x;

    iget-object v0, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v2}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->b(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v3}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->c(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Lcom/google/android/location/reporting/r;

    move-result-object v3

    new-instance v4, Lcom/google/android/location/reporting/b/g;

    invoke-direct {v4}, Lcom/google/android/location/reporting/b/g;-><init>()V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/service/x;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/ConfigGetter;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/b/f;)V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 174
    iget-object v4, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    const-string v0, "GCoreUlr"

    const/4 v5, 0x4

    invoke-static {v0, v5}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestUpload("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/service/y;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IJ)V

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/google/android/location/reporting/service/y;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/UploadRequest;->d()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration too long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "GCoreUlr"

    const-string v2, "original requestUpload() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    throw v0

    .line 174
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/UploadRequest;->b()Landroid/accounts/Account;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/location/reporting/service/x;->b:Lcom/google/android/location/reporting/config/ConfigGetter;

    invoke-interface {v4, v0}, Lcom/google/android/location/reporting/config/ConfigGetter;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/location/reporting/service/x;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;Lcom/google/android/location/reporting/config/AccountConfig;)I

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for inactive account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IJ)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v1, Lcom/google/android/location/reporting/service/x;->c:Lcom/google/android/location/reporting/r;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/reporting/r;->a(Lcom/google/android/gms/location/reporting/UploadRequest;J)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/location/reporting/service/x;->d:Lcom/google/android/location/reporting/b/f;

    iget-object v1, v1, Lcom/google/android/location/reporting/service/x;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/location/reporting/b/f;->c(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->e()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IJ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final b(Landroid/accounts/Account;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/u;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    .line 160
    new-instance v2, Lcom/google/android/location/reporting/config/k;

    iget-object v3, p0, Lcom/google/android/location/reporting/service/u;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/location/reporting/config/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/android/location/reporting/config/k;->a(Landroid/accounts/Account;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->b()Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/location/reporting/config/k;->a:Lcom/google/android/location/reporting/config/h;

    const-string v4, "tryOptIn()"

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "GCoreUlr"

    const-string v2, "original tryOptIn() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    throw v0
.end method
