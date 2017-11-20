.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/testability/android/bluetooth/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/d;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/d;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/d;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
