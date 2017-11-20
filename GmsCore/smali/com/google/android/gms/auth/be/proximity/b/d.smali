.class public final Lcom/google/android/gms/auth/be/proximity/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/b/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/d;->a:Lcom/google/android/gms/auth/be/proximity/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/d;->a:Lcom/google/android/gms/auth/be/proximity/b/d;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/b/c;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method
