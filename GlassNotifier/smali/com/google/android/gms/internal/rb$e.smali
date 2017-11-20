.class final Lcom/google/android/gms/internal/rb$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/e$b",
        "<",
        "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
        ">;"
    }
.end annotation


# instance fields
.field private final aCw:Ljava/lang/String;

.field private final aDC:I

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$e;->mAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$e;->aCw:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/rb$e;->aDC:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Notifications$OnDataChanged;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$e;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/rb$e;->aCw:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/rb$e;->aDC:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/people/Notifications$OnDataChanged;->onDataChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Notifications$OnDataChanged;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rb$e;->a(Lcom/google/android/gms/people/Notifications$OnDataChanged;)V

    return-void
.end method

.method public it()V
    .locals 0

    return-void
.end method
