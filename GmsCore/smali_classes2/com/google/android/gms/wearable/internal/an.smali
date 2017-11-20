.class public final Lcom/google/android/gms/wearable/internal/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/q;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/an;->a:Lcom/google/android/gms/common/api/Status;

    .line 25
    iput p2, p0, Lcom/google/android/gms/wearable/internal/an;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/an;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
