.class public Lcom/google/android/gms/wearable/service/WearableService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static a:Ljava/util/Set;

.field private static final b:I

.field private static final c:I

.field private static d:Ljava/util/Map;


# instance fields
.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/HashMap;

.field private volatile g:Lcom/google/android/gms/wearable/service/l;

.field private volatile h:Lcom/google/android/gms/wearable/service/m;

.field private i:Lcom/google/android/gms/wearable/node/j;

.field private j:Lcom/google/android/gms/wearable/node/as;

.field private k:Lcom/google/android/gms/wearable/node/h;

.field private final l:Lcom/google/android/gms/wearable/service/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gms/wearable/service/j;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/service/j;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/service/WearableService;->a:Ljava/util/Set;

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 102
    sput v0, Lcom/google/android/gms/wearable/service/WearableService;->b:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/wearable/service/WearableService;->c:I

    .line 111
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/service/WearableService;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->e:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->f:Ljava/util/HashMap;

    .line 135
    new-instance v0, Lcom/google/android/gms/wearable/service/e;

    sget v1, Lcom/google/android/gms/wearable/service/WearableService;->b:I

    sget v2, Lcom/google/android/gms/wearable/service/WearableService;->c:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/service/e;-><init>(IILjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->l:Lcom/google/android/gms/wearable/service/e;

    .line 759
    return-void
.end method

.method private a(Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/service/n;
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->e:Ljava/util/Map;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/n;

    .line 271
    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/google/android/gms/wearable/service/n;

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/wearable/service/n;-><init>(Lcom/google/android/gms/wearable/service/l;Lcom/google/android/gms/wearable/node/a;)V

    .line 273
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/WearableService;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()Ljava/util/List;
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/WearableService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 291
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/node/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v0

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0

    .line 298
    :cond_0
    const-string v0, "WearableService"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllListenerServices: count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/service/WearableService;)V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/WearableService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/service/WearableService;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/x;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    const-string v0, "WearableService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queueEventAndNotify: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/service/n;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/service/n;->a(Lcom/google/android/gms/wearable/service/x;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/service/l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/z;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->h:Lcom/google/android/gms/wearable/service/m;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/x;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/service/m;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V
    .locals 2

    .prologue
    .line 934
    sget-object v0, Lcom/google/android/gms/wearable/service/WearableService;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/service/WearableService;)Lcom/google/android/gms/wearable/service/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->l:Lcom/google/android/gms/wearable/service/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/wearable/service/WearableService;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 2

    .prologue
    .line 939
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 940
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->l:Lcom/google/android/gms/wearable/service/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/service/e;->a(Lcom/google/android/gms/wearable/d/d;ZZ)V

    .line 941
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 942
    const-string v0, "EventHandler"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 944
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/wearable/service/l;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 946
    const-string v0, "LiveListenerEventHandler"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 948
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->h:Lcom/google/android/gms/wearable/service/m;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/wearable/service/m;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 950
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 899
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/a/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 903
    :goto_0
    :try_start_0
    array-length v8, p3

    move v7, v4

    move-object v1, v6

    move v5, v4

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v0, p3, v7

    .line 904
    const-string v9, "verbose"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "-v"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v0, v1

    move v1, v3

    .line 903
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move v2, v4

    .line 899
    goto :goto_0

    :cond_2
    move v1, v5

    .line 908
    goto :goto_2

    .line 910
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 911
    :cond_4
    new-instance v7, Lcom/google/android/gms/wearable/d/d;

    const-string v0, "  "

    invoke-direct {v7, p2, v0}, Lcom/google/android/gms/wearable/d/d;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 913
    sget-object v0, Lcom/google/android/gms/wearable/service/WearableService;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 914
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 915
    if-eqz v6, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/d/c;

    .line 919
    if-eqz v1, :cond_7

    .line 920
    const-string v9, "#####################################"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 921
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 922
    if-eqz v5, :cond_8

    if-nez v2, :cond_8

    move v0, v3

    :goto_4
    invoke-interface {v1, v7, v2, v0}, Lcom/google/android/gms/wearable/d/c;->a(Lcom/google/android/gms/wearable/d/d;ZZ)V

    .line 924
    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/wearable/d/d;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 927
    :catch_0
    move-exception v0

    .line 928
    const-string v1, "WearableService"

    const-string v2, "caught exception while dumping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "caught exception while dumping"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    :goto_5
    return-void

    :cond_8
    move v0, v4

    .line 922
    goto :goto_4

    .line 926
    :cond_9
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/wearable/d/d;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "com.google.android.gms.wearable.BIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/google/android/gms/wearable/service/o;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/wearable/service/o;-><init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "WearableService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/WearableService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/y;->a(Landroid/content/Context;)V

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v1, Lcom/google/android/gms/wearable/service/l;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/wearable/service/l;-><init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableServiceLiveListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v1, Lcom/google/android/gms/wearable/service/m;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/wearable/service/m;-><init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->h:Lcom/google/android/gms/wearable/service/m;

    .line 158
    new-instance v0, Lcom/google/android/gms/wearable/service/s;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/wearable/service/s;-><init>(Lcom/google/android/gms/wearable/service/WearableService;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->i:Lcom/google/android/gms/wearable/node/j;

    .line 159
    sget-object v0, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->i:Lcom/google/android/gms/wearable/node/j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/j;)V

    .line 161
    new-instance v0, Lcom/google/android/gms/wearable/service/v;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/wearable/service/v;-><init>(Lcom/google/android/gms/wearable/service/WearableService;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->j:Lcom/google/android/gms/wearable/node/as;

    .line 162
    sget-object v0, Lcom/google/android/gms/wearable/node/ar;->a:Lcom/google/android/gms/wearable/node/ar;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->j:Lcom/google/android/gms/wearable/node/as;

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ar;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/wearable/node/ar;->d:Lcom/google/android/gms/wearable/node/as;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    new-instance v0, Lcom/google/android/gms/wearable/service/p;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/wearable/service/p;-><init>(Lcom/google/android/gms/wearable/service/WearableService;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->k:Lcom/google/android/gms/wearable/node/h;

    .line 165
    sget-object v0, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->k:Lcom/google/android/gms/wearable/node/h;

    iput-object v1, v0, Lcom/google/android/gms/wearable/node/aj;->b:Lcom/google/android/gms/wearable/node/h;

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    new-instance v1, Lcom/google/android/gms/wearable/service/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/service/k;-><init>(Lcom/google/android/gms/wearable/service/WearableService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/service/l;->post(Ljava/lang/Runnable;)Z

    .line 176
    const-string v0, "WearableService"

    invoke-static {v0, p0}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 177
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "WearableService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 188
    sget-object v0, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    iput-object v3, v0, Lcom/google/android/gms/wearable/node/aj;->b:Lcom/google/android/gms/wearable/node/h;

    .line 189
    iput-object v3, p0, Lcom/google/android/gms/wearable/service/WearableService;->k:Lcom/google/android/gms/wearable/node/h;

    .line 191
    sget-object v0, Lcom/google/android/gms/wearable/node/ar;->a:Lcom/google/android/gms/wearable/node/ar;

    iget-object v1, v0, Lcom/google/android/gms/wearable/node/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Lcom/google/android/gms/wearable/node/ar;->d:Lcom/google/android/gms/wearable/node/as;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iput-object v3, p0, Lcom/google/android/gms/wearable/service/WearableService;->j:Lcom/google/android/gms/wearable/node/as;

    .line 194
    sget-object v0, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/WearableService;->i:Lcom/google/android/gms/wearable/node/j;

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    iput-object v3, p0, Lcom/google/android/gms/wearable/service/WearableService;->i:Lcom/google/android/gms/wearable/node/j;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/l;->a()V

    .line 198
    iput-object v3, p0, Lcom/google/android/gms/wearable/service/WearableService;->g:Lcom/google/android/gms/wearable/service/l;

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->h:Lcom/google/android/gms/wearable/service/m;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/m;->a()V

    .line 201
    iput-object v3, p0, Lcom/google/android/gms/wearable/service/WearableService;->h:Lcom/google/android/gms/wearable/service/m;

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/WearableService;->l:Lcom/google/android/gms/wearable/service/e;

    iget-object v0, v0, Lcom/google/android/gms/wearable/service/e;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 204
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 194
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 208
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
