.class Lcom/google/android/gms/people/PeopleClient$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/PeopleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadCirclesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final My:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$c;->My:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/PeopleClient$c;-><init>(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Graph$LoadCirclesResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$c;->My:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadCirclesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadCirclesResult;->getCircles()Lcom/google/android/gms/people/model/CircleBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;->onCirclesLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/CircleBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Graph$LoadCirclesResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$c;->a(Lcom/google/android/gms/people/Graph$LoadCirclesResult;)V

    return-void
.end method
