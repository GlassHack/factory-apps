.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/testability/android/bluetooth/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/h;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothSocket;)Lcom/google/android/gms/auth/testability/android/bluetooth/g;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/h;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/h;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0
.end method
