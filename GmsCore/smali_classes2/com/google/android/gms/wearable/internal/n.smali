.class public final Lcom/google/android/gms/wearable/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/h;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/wearable/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/h;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/wearable/h;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/internal/n;->a:I

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/wearable/h;->a()Lcom/google/android/gms/wearable/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/wearable/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/j;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/n;->b:Lcom/google/android/gms/wearable/j;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/j;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/n;->b:Lcom/google/android/gms/wearable/j;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 11
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/wearable/internal/n;->a:I

    return v0
.end method
