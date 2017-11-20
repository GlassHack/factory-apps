.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/registration/v3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/e;->a:Lcom/google/android/gms/auth/be/proximity/registration/v3/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/gms/auth/be/proximity/registration/v3/d;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/e;->a:Lcom/google/android/gms/auth/be/proximity/registration/v3/e;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;-><init>(Ljava/io/InputStream;B)V

    return-object v0
.end method
