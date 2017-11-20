.class final Lcom/google/android/gms/auth/firstparty/dataservice/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ak;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/AccountChangeEventsRequest;

.field final synthetic b:Lcom/google/android/gms/auth/firstparty/dataservice/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/AccountChangeEventsRequest;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;->b:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;->a:Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/auth/firstparty/dataservice/ao;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;->a:Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ao;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    return-object v0
.end method
