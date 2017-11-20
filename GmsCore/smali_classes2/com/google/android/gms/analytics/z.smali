.class final Lcom/google/android/gms/analytics/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/y;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/gms/analytics/z;->a:Lcom/google/android/gms/analytics/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gms/analytics/z;->a:Lcom/google/android/gms/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/y;->f()V

    .line 245
    return-void
.end method
