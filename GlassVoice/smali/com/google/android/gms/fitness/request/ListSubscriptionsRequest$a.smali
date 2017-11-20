.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private CL:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public dY()Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;-><init>(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$1;)V

    return-object v0
.end method
