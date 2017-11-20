.class public Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;
.super Lcom/google/glass/inject/Provider;
.source "BluetoothDeviceWrapperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->instance:Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->instance:Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Intent;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;-><init>(Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method
