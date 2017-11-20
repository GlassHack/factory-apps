.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;B)V

    return-object v0
.end method
