.class public Lcom/google/glass/util/BluetoothHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "BluetoothHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/BluetoothHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/util/BluetoothHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/util/BluetoothHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/BluetoothHelperProvider;->instance:Lcom/google/glass/util/BluetoothHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/BluetoothHelperProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/util/BluetoothHelperProvider;->instance:Lcom/google/glass/util/BluetoothHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/util/BluetoothHelper;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/util/BluetoothHelperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/BluetoothHelperProvider$1;-><init>(Lcom/google/glass/util/BluetoothHelperProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/BluetoothHelper;

    return-object v0
.end method
