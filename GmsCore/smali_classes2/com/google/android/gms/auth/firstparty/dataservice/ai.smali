.class final Lcom/google/android/gms/auth/firstparty/dataservice/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ak;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/auth/firstparty/dataservice/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->b:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/auth/firstparty/dataservice/ao;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
