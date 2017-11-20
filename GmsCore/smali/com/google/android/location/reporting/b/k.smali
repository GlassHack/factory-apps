.class public abstract Lcom/google/android/location/reporting/b/k;
.super Lcom/google/android/gms/common/app/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/app/a;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/android/gms/common/app/a;->onCreate()V

    .line 20
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method
