.class Lcom/google/glass/maps/AlternateRoutesActivity$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

.field final synthetic val$currentRouteIndex:I

.field final synthetic val$mapView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/AlternateRoutesActivity;ILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    iput p2, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->val$currentRouteIndex:I

    iput-object p3, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->val$mapView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$100(Lcom/google/glass/maps/AlternateRoutesActivity;)Lcom/google/glass/maps/service/BackgroundMapRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v1}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->val$currentRouteIndex:I

    .line 85
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigation()Lcom/google/glass/navlib/Navigation;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    .line 86
    invoke-virtual {v4}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    .line 87
    invoke-virtual {v5}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->renderAlternateRoutes([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/location/DriveAboutLocation;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/AlternateRoutesActivity$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->val$mapView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$2;->val$mapView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/glass/maps/view/Animations;->fadeIn(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 93
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/AlternateRoutesActivity$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
