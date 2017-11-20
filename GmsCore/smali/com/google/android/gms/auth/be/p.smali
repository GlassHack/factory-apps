.class public Lcom/google/android/gms/auth/be/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;


# instance fields
.field private final c:Lcom/google/android/gms/auth/a/c;

.field private final d:Lcom/google/android/gms/auth/be/b/c;

.field private final e:Lcom/google/android/gms/auth/be/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/p;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->l:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->p:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->y:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->M:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->n:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/p;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 100
    new-instance v1, Lcom/google/android/gms/auth/a/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/auth/be/p;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/c;)V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/a/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 95
    new-instance v1, Lcom/google/android/gms/auth/be/b/h;

    new-instance v2, Lcom/google/android/gms/auth/be/b/a;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/be/b/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/auth/be/b/f;

    invoke-direct {v3, v0}, Lcom/google/android/gms/auth/be/b/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/auth/be/b/h;-><init>(Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/be/p;->d:Lcom/google/android/gms/auth/be/b/c;

    .line 96
    new-instance v0, Lcom/google/android/gms/auth/be/s;

    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/auth/be/s;-><init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/p;->e:Lcom/google/android/gms/auth/be/s;

    .line 97
    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/google/android/gms/auth/be/recovery/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/recovery/a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/a;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 3

    .prologue
    .line 496
    new-instance v0, Lcom/google/android/gms/auth/be/recovery/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/recovery/a;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->c:Z

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->d:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/be/recovery/a;->a(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 5

    .prologue
    .line 509
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/f;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->b:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/recovery/f;->b:Z

    iget-boolean v4, v0, Lcom/google/android/gms/auth/be/recovery/f;->c:Z

    iget-boolean v0, v0, Lcom/google/android/gms/auth/be/recovery/f;->d:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;-><init>(Ljava/lang/String;ZZZ)V

    return-object v1
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 7

    .prologue
    .line 504
    new-instance v0, Lcom/google/android/gms/auth/be/recovery/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/recovery/a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/be/t;->a()Lcom/google/android/gms/auth/be/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->f:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/f;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/auth/be/recovery/f;->b:Z

    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    return-object v1
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/google/android/gms/auth/be/p;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 554
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e()Ljava/lang/String;

    move-result-object v1

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->o:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 557
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 560
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 5

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/q;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/q;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/q;->a()Ljava/lang/String;

    move-result-object v2

    .line 537
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->b()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 3

    .prologue
    .line 120
    const-string v0, "Calling app description cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "AccountNameCheckRequest cannot be null!"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/google/android/gms/auth/be/c;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/c;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/google/android/gms/auth/be/c;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    .locals 7

    .prologue
    .line 378
    const-string v0, "accountRemovalRequest cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 381
    const-string v0, "com.google"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 382
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 383
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v0, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 393
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    .line 396
    :goto_1
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->n:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_1

    .line 389
    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->g:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_1

    .line 391
    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->g:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_1

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->C:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    .locals 3

    .prologue
    .line 319
    const-string v0, "clearTokenRequest cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 7

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v1

    .line 105
    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/a/d;->a()Z

    move-result v2

    iget-object v3, v1, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v4, v1, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v5, "services"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iget-object v4, v1, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v5, v1, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v6, "firstName"

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v6, "lastName"

    invoke-virtual {v5, v1, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 18

    .prologue
    .line 230
    new-instance v1, Lcom/google/android/gms/auth/be/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    const-string v2, "LSID"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v12

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v9

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 232
    :goto_0
    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v10

    .line 233
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->k()Z

    move-result v6

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->m()Z

    move-result v7

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->j()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 231
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    .locals 5

    .prologue
    .line 565
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v0

    .line 566
    iget-boolean v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->d:Lcom/google/android/gms/auth/be/b/c;

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/be/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 577
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 578
    const-string v0, "!"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 579
    array-length v3, v1

    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:[B

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 584
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 586
    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:[B

    if-eqz v1, :cond_1

    .line 593
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->d:Lcom/google/android/gms/auth/be/b/c;

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/be/b/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:[B

    array-length v0, v0

    array-length v4, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v4

    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "GLSUser"

    const-string v2, "UTF-8 IS UNSUPPORTED ?!?!?!?!?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/google/android/gms/auth/be/c;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/c;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/be/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v0, Lcom/google/android/gms/auth/be/i;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a()Z

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c()Z

    move-result v6

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->d()Z

    move-result v8

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->e()Z

    move-result v9

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    .line 268
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v2, v1, :cond_1

    .line 269
    const-string v2, "GLSUser"

    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v2, "%s createpPlusProfile wasn\'t successful: %s"

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gms/auth/be/p;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, "GLSUser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->R:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 277
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 18

    .prologue
    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/p;->e:Lcom/google/android/gms/auth/be/s;

    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    move-result-object v1

    .line 409
    if-nez v1, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/p;->e:Lcom/google/android/gms/auth/be/s;

    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    move-result-object v1

    .line 414
    :cond_0
    iget v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->b:I

    if-nez v2, :cond_2

    const-string v2, "ACTIVE"

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->d:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/p;->e:Lcom/google/android/gms/auth/be/s;

    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    move-result-object v1

    .line 420
    iget v1, v1, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->b:I

    if-nez v1, :cond_2

    .line 421
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    .line 422
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 454
    :cond_1
    :goto_0
    return-object v1

    .line 428
    :cond_2
    new-instance v1, Lcom/google/android/gms/auth/be/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b()Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/i;->b(Ljava/lang/String;)V

    .line 433
    :cond_3
    const-string v2, "ac2dm"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v12}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v12

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p2

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 451
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 452
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 10

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/gms/auth/be/g;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/be/g;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    const-string v2, "oauth1:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/g;->c(Ljava/lang/String;)V

    .line 355
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->e()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v3, v3, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    const-string v4, "addAccount"

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/auth/be/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v3, p2

    move v4, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/auth/be/g;->a(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 372
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 374
    :cond_1
    return-object v0

    .line 351
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 6

    .prologue
    .line 284
    const-string v0, "Calling AppDescription cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "TokenRequest cannot be null!"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    const-string v2, "getToken"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/auth/be/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/be/i;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k()Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 315
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 17

    .prologue
    .line 164
    const-string v1, "AppDescription cannot be null!"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "AccountCredentials cannot be null!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "GoogleAccountSetupRequest cannot be null!"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 168
    new-instance v1, Lcom/google/android/gms/auth/be/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v3, v3, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/google/android/gms/auth/be/c;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f()Z

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->f()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v14

    const-string v15, "createAccount"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/google/android/gms/auth/be/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, p4

    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/auth/be/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/auth/be/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a()Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Lcom/google/android/gms/auth/be/i;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c()Ljava/lang/String;

    move-result-object v3

    .line 473
    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 484
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 486
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 488
    :cond_0
    return-object v0

    .line 476
    :cond_1
    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 479
    :cond_2
    invoke-virtual {v1, v0, v3, p2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_3
    const-string v0, "GLSUser"

    const-string v1, "Cannot update credentials when no credentials are supplied."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    const-string v0, "AccountName must be provided"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "GoogleUserId"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/be/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Fetched account id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Lcom/google/android/gms/auth/be/i;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/p;->c:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/i;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
