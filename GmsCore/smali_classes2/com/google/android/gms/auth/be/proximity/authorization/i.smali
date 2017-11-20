.class public final Lcom/google/android/gms/auth/be/proximity/authorization/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/i;->a:Lcom/google/android/gms/auth/be/proximity/authorization/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/android/gms/auth/be/proximity/authorization/h;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/i;->a:Lcom/google/android/gms/auth/be/proximity/authorization/i;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;-><init>(Ljava/io/OutputStream;B)V

    return-object v0
.end method
