.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;B)V

    return-object v0
.end method
