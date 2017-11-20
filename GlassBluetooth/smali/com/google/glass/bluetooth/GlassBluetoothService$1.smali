.class Lcom/google/glass/bluetooth/GlassBluetoothService$1;
.super Landroid/os/Handler;
.source "GlassBluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/GlassBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/GlassBluetoothService;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService$1;->this$0:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_0

    .line 176
    invoke-static {}, Lcom/google/glass/bluetooth/GlassBluetoothService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unknown what value: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService$1;->this$0:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-static {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService;->access$100(Lcom/google/glass/bluetooth/GlassBluetoothService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    invoke-interface {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/bluetooth/GlassBluetoothService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Exception thrown in PeriodicTask#execute: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v2, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;Ljava/lang/Boolean;>;"
    :cond_2
    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService$1;->this$0:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-static {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService;->access$200(Lcom/google/glass/bluetooth/GlassBluetoothService;)V

    goto :goto_0
.end method
