.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/testability/android/bluetooth/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/b;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/a;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
