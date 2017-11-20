.class public final Lcom/google/android/gms/fitness/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/i;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/Device;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/Device;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/l;->a:Lcom/google/android/gms/fitness/data/Device;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/l;->a:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Device;->e()I

    move-result v0

    return v0
.end method
