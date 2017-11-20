.class Lcom/google/android/gms/internal/gl$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/pseudonymous/PseudonymousIdApi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final QB:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gl$d;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/gl$d;->QB:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gl$d;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
