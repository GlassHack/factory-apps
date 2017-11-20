.class public final Lcom/google/android/gms/fitness/sensors/f/a;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/fitness/sensors/e/i;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/a;->b:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->a:Lcom/google/android/gms/fitness/sensors/e/i;

    .line 46
    return-void
.end method

.method private static a(Landroid/content/pm/ResolveInfo;)Ljava/util/List;
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 156
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    const-string v3, "vnd.google.fitness.data_type/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/16 v3, 0x1d

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/fitness/data/k;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    .line 162
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    const-string v3, "Couldn\'t resolve mime type %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 168
    :cond_1
    return-object v1
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;
    .locals 8

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.fitness.service.FitnessSensorService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/fitness/b;->a(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const-string v2, "Found %d application sensor services for %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 121
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 122
    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/f/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/fitness/sensors/f/a;->a(Landroid/content/pm/ResolveInfo;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/fitness/b;->a(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v6, Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v7, p0, Lcom/google/android/gms/fitness/sensors/f/a;->b:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v0}, Lcom/google/android/gms/fitness/sensors/f/c;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v4, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {v6}, Lcom/google/android/gms/fitness/sensors/f/c;->a()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/f/c;

    .line 136
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Lcom/google/android/gms/fitness/sensors/b/b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/sensors/b/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/f/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/gms/fitness/sensors/f/b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/sensors/f/b;-><init>(Lcom/google/android/gms/fitness/sensors/f/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    .line 80
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/f/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/f/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/a;->a:Lcom/google/android/gms/fitness/sensors/e/i;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/g;

    .line 86
    if-nez v0, :cond_0

    .line 87
    const-string v0, "Couldn\'t find registration for %s, ignoring."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 94
    const-string v2, "More than one data source for listener %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/f/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/f/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
