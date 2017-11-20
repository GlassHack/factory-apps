.class public final Lcom/google/android/gms/internal/aa;
.super Lcom/google/android/gms/common/internal/c;


# static fields
.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/by$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/by$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/aa;->b:Ljava/util/Set;

    return-void
.end method
