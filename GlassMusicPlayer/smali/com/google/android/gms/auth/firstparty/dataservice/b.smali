.class final Lcom/google/android/gms/auth/firstparty/dataservice/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/c;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

.field final synthetic b:Lcom/google/android/gms/auth/firstparty/dataservice/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/a;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/b;->b:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/android/gms/auth/firstparty/dataservice/ah;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ah;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/auth/firstparty/dataservice/ah;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/b;->b(Lcom/google/android/gms/auth/firstparty/dataservice/ah;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method
