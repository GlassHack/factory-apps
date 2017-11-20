.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;->a:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;B)V

    return-object v0
.end method
