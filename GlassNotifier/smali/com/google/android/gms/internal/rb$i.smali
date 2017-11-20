.class final Lcom/google/android/gms/internal/rb$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/GraphUpdate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final Xr:Ljava/lang/String;

.field private final aDD:Ljava/lang/String;

.field private final aDE:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$i;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$i;->Xr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/rb$i;->aDD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rb$i;->aDE:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$i;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
