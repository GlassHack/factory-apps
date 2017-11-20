.class Lcom/google/glass/util/BluetoothHelperProvider$1;
.super Ljava/lang/Object;
.source "BluetoothHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelperProvider;->get()Lcom/google/glass/util/BluetoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/util/BluetoothHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BluetoothHelperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelperProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/BluetoothHelperProvider;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelperProvider$1;->this$0:Lcom/google/glass/util/BluetoothHelperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/BluetoothHelper;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/util/BluetoothHelperProvider$1;->get()Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    return-object v0
.end method
