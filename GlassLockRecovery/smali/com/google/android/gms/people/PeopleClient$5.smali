.class Lcom/google/android/gms/people/PeopleClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadAddToCircleConsent(Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mo:Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$5;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$5;->Mo:Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$5;->Mo:Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;->getShowConsent()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;->getConsentHtml()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;->getConsentTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;->getConsentButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;->onAddToCircleConsentLoaded(Lcom/google/android/gms/common/ConnectionResult;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$5;->a(Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;)V

    return-void
.end method
