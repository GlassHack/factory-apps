.class Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$2;
.super Ljava/lang/Object;
.source "BluetoothTutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->onUnfocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$2;->this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$2;->this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    invoke-static {v0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->access$100(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 99
    return-void
.end method
