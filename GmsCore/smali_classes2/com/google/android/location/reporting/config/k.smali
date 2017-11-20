.class public final Lcom/google/android/location/reporting/config/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/reporting/config/h;

.field public final b:Ljava/lang/String;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/k;->c:Landroid/content/pm/PackageManager;

    .line 65
    iput-object p2, p0, Lcom/google/android/location/reporting/config/k;->a:Lcom/google/android/location/reporting/config/h;

    .line 66
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/k;->d:Ljava/util/List;

    .line 67
    iput-object p4, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/location/reporting/service/y;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/android/location/reporting/config/k;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Ljava/util/List;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)I
    .locals 5

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x3

    .line 83
    if-nez p1, :cond_2

    .line 84
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "GCoreUlr"

    const-string v1, "OptInHelper: Account missing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v0, 0x2

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/reporting/config/k;->a:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v2, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid account to opt in: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 97
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    const-string v0, "GCoreUlr"

    const-string v1, "OptInHelper: no sender calling package"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 102
    :cond_5
    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 103
    const-string v2, "GCoreUlr"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OptInHelper: Package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_7
    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->c:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 110
    const-string v2, "GCoreUlr"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OptInHelper: Package not signed with Google cert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/reporting/config/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v1

    .line 113
    goto/16 :goto_0

    .line 115
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->w()Z

    move-result v1

    if-nez v1, :cond_b

    .line 116
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OptInHelper: Reporting can not be activated for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_a
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 121
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
