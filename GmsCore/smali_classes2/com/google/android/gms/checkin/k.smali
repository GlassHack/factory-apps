.class final Lcom/google/android/gms/checkin/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/checkin/j;

.field private b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/j;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/android/gms/checkin/k;->a:Lcom/google/android/gms/checkin/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/k;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/android/gms/checkin/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/checkin/k;->b:I

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/google/android/gms/checkin/k;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
