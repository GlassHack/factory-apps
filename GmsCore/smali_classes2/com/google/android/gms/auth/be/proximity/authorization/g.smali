.class public final Lcom/google/android/gms/auth/be/proximity/authorization/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/g;->a:Lcom/google/android/gms/auth/be/proximity/authorization/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/gms/auth/be/proximity/authorization/f;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/g;->a:Lcom/google/android/gms/auth/be/proximity/authorization/g;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/f;-><init>(Ljava/io/InputStream;B)V

    return-object v0
.end method
