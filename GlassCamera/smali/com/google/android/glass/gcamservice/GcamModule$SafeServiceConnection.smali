.class Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;
.super Ljava/lang/Object;
.source "GcamModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gcamservice/GcamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafeServiceConnection"
.end annotation


# instance fields
.field private final mRunnableWhenConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/glass/gcamservice/GcamModule;


# direct methods
.method private constructor <init>(Lcom/google/android/glass/gcamservice/GcamModule;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->mRunnableWhenConnected:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/GcamModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/glass/gcamservice/GcamModule;
    .param p2, "x1"    # Lcom/google/android/glass/gcamservice/GcamModule$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;-><init>(Lcom/google/android/glass/gcamservice/GcamModule;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 105
    const-string v2, "GcamModule"

    const-string v3, "GcamService connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-static {p2}, Lcom/google/android/glass/gcamservice/IGcamModule$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gcamservice/IGcamModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/glass/gcamservice/GcamModule;->access$002(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/IGcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;

    .line 107
    iget-object v2, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-static {v2}, Lcom/google/android/glass/gcamservice/GcamModule;->access$000(Lcom/google/android/glass/gcamservice/GcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    const-string v2, "GcamModule"

    const-string v3, "Null service returned!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->mRunnableWhenConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 113
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 115
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->mRunnableWhenConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 120
    const-string v0, "GcamModule"

    const-string v1, "GcamService disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/glass/gcamservice/GcamModule;->access$002(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/IGcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;

    .line 122
    return-void
.end method

.method public runWhenConnected(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-static {v0}, Lcom/google/android/glass/gcamservice/GcamModule;->access$000(Lcom/google/android/glass/gcamservice/GcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->mRunnableWhenConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
