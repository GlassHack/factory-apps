.class public final Lcom/google/android/location/reporting/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/b/j;->a:Ljava/util/Random;

    return-void
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    if-nez p0, :cond_0

    .line 763
    const-string v0, "null"

    .line 767
    :goto_0
    return-object v0

    .line 764
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 765
    const-string v0, "no_accuracy"

    goto :goto_0

    .line 767
    :cond_1
    const-string v0, "has_accuracy"

    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/reporting/config/Conditions;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1086
    invoke-static {v0}, Lcom/google/android/gms/location/reporting/InactiveReason;->a(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    invoke-static {}, Lcom/google/android/location/reporting/b/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :goto_1
    return-object v0

    .line 1089
    :cond_0
    const-string v0, "unknown-country"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 355
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/android/location/reporting/f;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/util/concurrent/ExecutionException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 361
    instance-of v2, v0, Lcom/android/d/aa;

    if-eqz v2, :cond_4

    .line 363
    check-cast v0, Lcom/android/d/aa;

    .line 364
    iget-object v1, v0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    if-eqz v1, :cond_3

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VolleyError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v0, v0, Lcom/android/d/m;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_3
    const-string v0, "VolleyError:null-response"

    goto :goto_2

    .line 369
    :cond_4
    instance-of v2, v0, Lcom/google/android/gms/auth/af;

    if-eqz v2, :cond_5

    .line 370
    const-string v0, "UserRecoverableAuthException"

    goto :goto_2

    .line 371
    :cond_5
    instance-of v0, v0, Lcom/google/android/gms/auth/q;

    if-eqz v0, :cond_6

    .line 372
    const-string v0, "GoogleAuthException"

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1061
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1062
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    .line 1063
    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/InactiveReason;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1065
    :cond_0
    const-string v0, "_"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 489
    const-string v0, "gmm_read"

    const-string v1, "success"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 490
    return-void
.end method

.method public static a(I)V
    .locals 4

    .prologue
    .line 616
    const-string v0, "metadata_created"

    int-to-long v2, p0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 617
    return-void
.end method

.method private static a(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1051
    const-string v0, "GcoreUlrLong"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const-string v0, "GcoreUlrLong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": reporting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    const-string v0, "controller"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1057
    return-void
.end method

.method public static a(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 451
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start_svc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/String;)V

    .line 454
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 309
    invoke-static {p0}, Lcom/google/android/location/a/b;->a(Landroid/content/Context;)V

    .line 310
    invoke-static {p0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 311
    sget-object v0, Lcom/google/android/location/reporting/service/y;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/location/reporting/b/j;->b:I

    .line 312
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/a/i;)V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wifi_unknown_auth_type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/reporting/a/i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/a;)V
    .locals 5

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new_account:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v1, "sync"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 533
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/a;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "settings_invalid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    const-string v1, "upload"

    const-wide/16 v2, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 832
    const-string v0, "location_upload_invalid_settings"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 833
    const-string v0, "activity_upload_invalid_settings"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 834
    const-string v0, "metadata_upload_invalid_settings"

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 835
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 4

    .prologue
    .line 586
    const-string v0, "location_received"

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 587
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/a/e;)V
    .locals 4

    .prologue
    .line 606
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/reporting/a/e;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 607
    const-string v0, "wifi_attached"

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 609
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 7

    .prologue
    .line 1013
    if-nez p0, :cond_1

    .line 1041
    :cond_0
    return-void

    .line 1019
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1021
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1023
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v3

    .line 1024
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v4

    .line 1026
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 1027
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 1028
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 1029
    if-nez v1, :cond_3

    .line 1030
    const-string v1, "activated:accountAdded"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_3
    if-nez v2, :cond_4

    .line 1032
    const-string v1, "inactivated:accountRemoved"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1034
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "activated:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1037
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "inactivated:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/config/ReportingConfig;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v2

    .line 1109
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v3

    .line 1111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1112
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1113
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 1116
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 1117
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 1118
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->q()I

    move-result v5

    .line 1120
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->q()I

    move-result v6

    .line 1121
    const-string v7, "reporting:"

    invoke-static {v7, v5, v6, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 1123
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->r()I

    move-result v1

    .line 1124
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->r()I

    move-result v0

    .line 1125
    const-string v5, "history:"

    invoke-static {v5, v1, v0, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_0
    const-string v5, "GCoreUlr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Accounts changed during setting update: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " -> "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v0, "account_change_during_update"

    const-string v1, "error"

    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v6, v7, v5}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1133
    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 595
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 596
    const-string v0, "wifi_received"

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 598
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/e;)V
    .locals 4

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":save_attempt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    const-wide/16 v2, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 626
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":evicted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 652
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 642
    const-string v0, ":save:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 643
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/location/Location;Lcom/google/android/location/reporting/t;Lcom/google/android/location/reporting/i;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 743
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prev_location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/m;->h()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/location/reporting/b/j;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p3, Lcom/google/android/location/reporting/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "moved"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p3, Lcom/google/android/location/reporting/t;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown_reason"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 753
    return-void

    .line 750
    :cond_0
    const-string v0, "stationary"

    goto :goto_0

    :pswitch_0
    const-string v0, "no_accuracy"

    goto :goto_1

    :pswitch_1
    const-string v0, "location_changed"

    goto :goto_1

    :pswitch_2
    const-string v0, "insufficient_accuracy"

    goto :goto_1

    :pswitch_3
    const-string v0, "sufficient_accuracy"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 460
    const-string v0, "wtf_wifi"

    const-string v1, "wifi_attachment:"

    invoke-static {v0, v1, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 461
    return-void
.end method

.method public static a(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 855
    const-string v0, "exception:"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 856
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 857
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 987
    const-string v0, "flp"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 988
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "server_location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 1166
    return-void
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 1141
    if-eq p1, p2, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/f;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_to_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/location/reporting/f;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {v0, p3, v4, v5, v2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1149
    invoke-static {p3, v0, v4, v5, v2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1151
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recreate_rows_lost:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 973
    return-void
.end method

.method private static a(Ljava/lang/String;JZ)V
    .locals 3

    .prologue
    .line 562
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    const-string v0, "entity"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-static {v0, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 578
    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 579
    invoke-static {p2, v4}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 580
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 838
    invoke-static {p0, p1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 839
    const-string v1, "exception:VolleyError:null-response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 840
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 841
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 723
    const-string v0, "attempt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 725
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 726
    return-void

    .line 723
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 4

    .prologue
    .line 732
    const-string v0, "upload"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, p0, v2, v3, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 733
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 331
    sget v0, Lcom/google/android/location/reporting/b/j;->b:I

    if-gtz v0, :cond_1

    .line 332
    const-string v0, "GCoreUlr"

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "GCoreUlr"

    const-string v1, "UlrAnalytics.init() must be called."

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p4, :cond_4

    .line 338
    sget-object v0, Lcom/google/android/location/reporting/b/j;->a:Ljava/util/Random;

    sget v1, Lcom/google/android/location/reporting/b/j;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 339
    const-string v0, "GCoreUlr"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Throttling analytics event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 344
    :cond_3
    sget v0, Lcom/google/android/location/reporting/b/j;->b:I

    int-to-long v0, v0

    mul-long/2addr p2, v0

    .line 346
    :cond_4
    const-string v0, "ulr"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 396
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 397
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_1

    const-class v0, Lcom/google/android/location/reporting/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 440
    :goto_1
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_2
    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 445
    return-void

    .line 436
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 440
    :cond_2
    const-string v0, "unknown:"

    goto :goto_2
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 777
    const-string v0, "success"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 778
    const-string v0, "location_uploaded"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 779
    const-string v0, "activity_uploaded"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 780
    const-string v0, "metadata_uploaded"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 781
    return-void
.end method

.method public static a(Z)V
    .locals 5

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sync_dirty_retry:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    const-string v1, "sync"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 515
    return-void
.end method

.method public static b()V
    .locals 5

    .prologue
    .line 497
    const-string v0, "gmm_read"

    const-string v1, "skipped"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 498
    return-void
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 1169
    const-string v0, "missing"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;I)V

    .line 1170
    return-void
.end method

.method public static b(Lcom/google/android/location/reporting/a;)V
    .locals 6

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not_dirty:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    const-string v1, "success"

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 542
    const-string v2, "sync"

    const-wide/16 v4, 0x1

    invoke-static {v2, v0, v4, v5, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 543
    return-void
.end method

.method public static b(Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 4

    .prologue
    .line 612
    const-string v0, "activity_received"

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 613
    return-void
.end method

.method public static b(Lcom/google/android/location/reporting/e;)V
    .locals 4

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    const-wide/16 v2, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 634
    return-void
.end method

.method public static b(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 661
    return-void
.end method

.method public static b(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 707
    const-string v0, ":deserialize:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 708
    return-void
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 467
    const-string v0, "wtf_wifi"

    const-string v1, "wifi_scan_conversion:"

    invoke-static {v0, v1, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 468
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1047
    const-string v0, "ble"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1048
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-static {v0, p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 902
    const-string v1, "db"

    const-wide/16 v2, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 903
    invoke-static {p2, v4}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 904
    return-void
.end method

.method public static b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 791
    if-eqz p0, :cond_1

    .line 792
    const-string v0, "location_sent"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 793
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiLocationReading;

    invoke-virtual {v0}, Lcom/google/android/ulr/ApiLocationReading;->getReadingInfo()Lcom/google/android/ulr/ApiReadingInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/ulr/ApiReadingInfo;->getWifiScans()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_4

    const-string v0, "wifi_sent"

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 795
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 796
    const-string v0, "activity_sent"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 798
    :cond_2
    if-eqz p2, :cond_3

    .line 799
    const-string v0, "metadata_sent"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 801
    :cond_3
    return-void

    .line 793
    :cond_4
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GCoreUlr"

    const-string v1, "Analytics: no wifis sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opt_in:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 882
    const-string v0, "should_undefine_action"

    const-string v1, "sleep"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 883
    return-void
.end method

.method public static c(I)V
    .locals 1

    .prologue
    .line 1173
    const-string v0, "extra"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;I)V

    .line 1174
    return-void
.end method

.method public static c(Lcom/google/android/location/reporting/a;)V
    .locals 5

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dirty:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v1, "sync"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 551
    return-void
.end method

.method public static c(Lcom/google/android/location/reporting/e;)V
    .locals 4

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":overflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 669
    return-void
.end method

.method public static c(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":obsolete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 679
    return-void
.end method

.method public static c(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 919
    const-string v0, "retrieve_entity:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 920
    return-void
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 482
    const-string v0, "gmm_read"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 483
    return-void
.end method

.method public static d()V
    .locals 5

    .prologue
    .line 890
    const-string v0, "should_undefine_action"

    const-string v1, "eligible_after_sleep"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 891
    return-void
.end method

.method public static d(I)V
    .locals 1

    .prologue
    .line 1177
    const-string v0, "errors"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;I)V

    .line 1178
    return-void
.end method

.method public static d(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":deserialize_attempt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 689
    return-void
.end method

.method public static d(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 934
    const-string v0, "clear_store:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 935
    return-void
.end method

.method public static d(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    const-string v0, "exception:"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 522
    const-string v1, "sync"

    const-wide/16 v2, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 523
    invoke-static {p0, v4}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 524
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 386
    const-string v0, "wtf"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 387
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 910
    const-string v0, "retrieve_entity:"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->e(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public static e(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":deserialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 699
    return-void
.end method

.method public static e(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 949
    const-string v0, "clear_old:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 950
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 848
    const-string v0, "exception:"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 849
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attempt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    const-string v1, "db"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 896
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 926
    const-string v0, "clear_store:"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->e(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public static f(Lcom/google/android/location/reporting/e;I)V
    .locals 4

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":deleted_after_use"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;JZ)V

    .line 717
    return-void
.end method

.method public static f(Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 964
    const-string v0, "restrict_to:"

    invoke-static {v0, p0, p1}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;Lcom/google/android/location/reporting/e;Ljava/lang/Exception;)V

    .line 965
    return-void
.end method

.method public static f(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 864
    const-string v0, "clear_db_exception:"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 865
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 866
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 941
    const-string v0, "clear_old:"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->e(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public static g(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 873
    const-string v0, "read_db_exception:"

    invoke-static {v0, p0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 874
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 875
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 956
    const-string v0, "restrict_to:"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->e(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public static i()V
    .locals 5

    .prologue
    .line 995
    const-string v0, "ambiguous_setting_notification"

    const-string v1, "shown"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 996
    return-void
.end method

.method public static j()V
    .locals 5

    .prologue
    .line 1158
    const-string v0, "obsolete"

    const-string v1, "device_tag"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1159
    return-void
.end method
