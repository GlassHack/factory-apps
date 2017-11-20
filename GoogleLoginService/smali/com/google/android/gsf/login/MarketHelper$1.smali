.class Lcom/google/android/gsf/login/MarketHelper$1;
.super Ljava/lang/Object;
.source "MarketHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/MarketHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/MarketHelper;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 170
    invoke-static {p2}, Lcom/android/vending/billing/IBillingAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v0

    .line 171
    .local v0, "billing":Lcom/android/vending/billing/IBillingAccountService;
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v1, v1, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iput-object v0, v1, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 174
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v1, v1, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v1, v1, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v2, v2, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 181
    return-void
.end method
