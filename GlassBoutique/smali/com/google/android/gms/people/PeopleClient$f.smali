.class Lcom/google/android/gms/people/PeopleClient$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/PeopleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final MA:Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$f;->MA:Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$f;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$f;->MA:Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;->onOperationFinished(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
