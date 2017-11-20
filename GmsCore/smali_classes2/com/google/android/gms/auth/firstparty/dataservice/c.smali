.class public final Lcom/google/android/gms/auth/firstparty/dataservice/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 11

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->i:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->f:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;-><init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/c;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/c;->i:Ljava/util/List;

    .line 45
    return-object p0
.end method
