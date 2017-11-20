.class final Lcom/google/android/location/places/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/ao;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ao;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ao;->f(Lcom/google/android/location/places/ui/ao;)Lcom/google/android/location/places/ui/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v1}, Lcom/google/android/location/places/ui/ao;->a(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v2}, Lcom/google/android/location/places/ui/ao;->b(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v3}, Lcom/google/android/location/places/ui/ao;->c(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v4}, Lcom/google/android/location/places/ui/ao;->d(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/places/ui/ap;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v5}, Lcom/google/android/location/places/ui/ao;->e(Lcom/google/android/location/places/ui/ao;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/location/places/ui/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceType;)V

    .line 123
    return-void
.end method
